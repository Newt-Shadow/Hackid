package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Ai;
import io.appmetrica.analytics.impl.C1264j8;
import io.appmetrica.analytics.impl.C1277jl;
import io.appmetrica.analytics.impl.C1289k8;
import io.appmetrica.analytics.impl.E6;
import io.appmetrica.analytics.impl.Im;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Kk;
import io.appmetrica.analytics.impl.Kn;
import io.appmetrica.analytics.impl.S2;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
/* loaded from: classes2.dex */
public class BirthDateAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final E6 f21333a = new E6("appmetrica_birth_date", new C1289k8(), new C1277jl());

    final UserProfileUpdate a(Calendar calendar, String str, S2 s22) {
        return new UserProfileUpdate(new Im(this.f21333a.f18143c, new SimpleDateFormat(str).format(calendar.getTime()), new C1264j8(), new C1289k8(), s22));
    }

    public UserProfileUpdate<? extends Kn> withAge(int i10) {
        int i11 = Calendar.getInstance(Locale.US).get(1) - i10;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i11);
        return a(gregorianCalendar, "yyyy", new J4(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withAgeIfUndefined(int i10) {
        int i11 = Calendar.getInstance(Locale.US).get(1) - i10;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i11);
        return a(gregorianCalendar, "yyyy", new Kk(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withBirthDate(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", new J4(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withBirthDateIfUndefined(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", new Kk(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withValueReset() {
        return new UserProfileUpdate<>(new Ai(0, this.f21333a.f18143c, new C1289k8(), new C1277jl()));
    }

    public UserProfileUpdate<? extends Kn> withBirthDate(int i10) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        return a(gregorianCalendar, "yyyy", new J4(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withBirthDateIfUndefined(int i10) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        return a(gregorianCalendar, "yyyy", new Kk(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withBirthDate(int i10, int i11) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        gregorianCalendar.set(2, i11 - 1);
        gregorianCalendar.set(5, 1);
        return a(gregorianCalendar, "yyyy-MM", new J4(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withBirthDateIfUndefined(int i10, int i11) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        gregorianCalendar.set(2, i11 - 1);
        gregorianCalendar.set(5, 1);
        return a(gregorianCalendar, "yyyy-MM", new Kk(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withBirthDate(int i10, int i11, int i12) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        gregorianCalendar.set(2, i11 - 1);
        gregorianCalendar.set(5, i12);
        return a(gregorianCalendar, "yyyy-MM-dd", new J4(this.f21333a.f18142b));
    }

    public UserProfileUpdate<? extends Kn> withBirthDateIfUndefined(int i10, int i11, int i12) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        gregorianCalendar.set(2, i11 - 1);
        gregorianCalendar.set(5, i12);
        return a(gregorianCalendar, "yyyy-MM-dd", new Kk(this.f21333a.f18142b));
    }
}
