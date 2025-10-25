package wb;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.m;
import m6.Task;
import m6.f;
/* loaded from: classes.dex */
public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Object f32021a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final List f32022b = new ArrayList();

    /* loaded from: classes.dex */
    public static final class a implements f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ wb.a f32024b;

        a(wb.a aVar) {
            this.f32024b = aVar;
        }

        @Override // m6.f
        public void onComplete(Task task) {
            c cVar;
            synchronized (b.this.f32021a) {
                b.this.f32022b.remove(this);
            }
            if (task.p()) {
                wb.a aVar = this.f32024b;
                Object l10 = task.l();
                m.d(l10, "completedTask.result");
                String a10 = ((c5.b) l10).a();
                b bVar = b.this;
                Object l11 = task.l();
                m.d(l11, "completedTask.result");
                int b10 = ((c5.b) l11).b();
                bVar.getClass();
                if (b10 != 1) {
                    if (b10 != 2) {
                        cVar = c.UNKNOWN;
                    } else {
                        cVar = c.DEVELOPER;
                    }
                } else {
                    cVar = c.APP;
                }
                aVar.a(a10, cVar);
                return;
            }
            this.f32024b.a(task.k());
        }
    }

    @Override // wb.d
    public void a(Context context, wb.a aVar) {
        c5.a a10 = AppSet.a(context);
        m.d(a10, "AppSet.getClient(context)");
        Task a11 = a10.a();
        m.d(a11, "client.appSetIdInfo");
        a aVar2 = new a(aVar);
        synchronized (this.f32021a) {
            this.f32022b.add(aVar2);
        }
        a11.c(aVar2);
    }
}
