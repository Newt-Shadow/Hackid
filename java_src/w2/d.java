package w2;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
/* loaded from: classes.dex */
public class d implements x {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31661a;

    /* renamed from: b  reason: collision with root package name */
    private final x2.d f31662b;

    /* renamed from: c  reason: collision with root package name */
    private final f f31663c;

    public d(Context context, x2.d dVar, f fVar) {
        this.f31661a = context;
        this.f31662b = dVar;
        this.f31663c = fVar;
    }

    private boolean d(JobScheduler jobScheduler, int i10, int i11) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i12 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i10) {
                if (i12 < i11) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    @Override // w2.x
    public void a(p2.p pVar, int i10) {
        b(pVar, i10, false);
    }

    @Override // w2.x
    public void b(p2.p pVar, int i10, boolean z10) {
        ComponentName componentName = new ComponentName(this.f31661a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f31661a.getSystemService("jobscheduler");
        int c10 = c(pVar);
        if (!z10 && d(jobScheduler, c10, i10)) {
            t2.a.b("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", pVar);
            return;
        }
        long p02 = this.f31662b.p0(pVar);
        JobInfo.Builder c11 = this.f31663c.c(new JobInfo.Builder(c10, componentName), pVar.d(), p02, i10);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i10);
        persistableBundle.putString("backendName", pVar.b());
        persistableBundle.putInt(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR, a3.a.a(pVar.d()));
        if (pVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(pVar.c(), 0));
        }
        c11.setExtras(persistableBundle);
        t2.a.c("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", pVar, Integer.valueOf(c10), Long.valueOf(this.f31663c.g(pVar.d(), p02, i10)), Long.valueOf(p02), Integer.valueOf(i10));
        jobScheduler.schedule(c11.build());
    }

    int c(p2.p pVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f31661a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(pVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(a3.a.a(pVar.d())).array());
        if (pVar.c() != null) {
            adler32.update(pVar.c());
        }
        return (int) adler32.getValue();
    }
}
