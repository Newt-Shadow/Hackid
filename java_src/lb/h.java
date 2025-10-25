package lb;

import java.util.Calendar;
import java.util.Date;
/* loaded from: classes.dex */
public final class h implements g {
    @Override // lb.g
    public long a() {
        return System.nanoTime();
    }

    @Override // lb.g
    public Date b(int i10) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(13, i10);
        Date time = calendar.getTime();
        kotlin.jvm.internal.m.d(time, "cal.time");
        return time;
    }

    @Override // lb.g
    public Date c() {
        Date time = Calendar.getInstance().getTime();
        kotlin.jvm.internal.m.d(time, "cal.time");
        return time;
    }

    @Override // lb.g
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
