package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.Dn;
import com.yandex.metrica.impl.ob.InterfaceC0435bf;
import com.yandex.metrica.impl.ob.Ke;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
import com.yandex.metrica.impl.ob.Xe;
import com.yandex.metrica.impl.ob.Ye;
import com.yandex.metrica.impl.ob.Ym;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
/* loaded from: classes2.dex */
public class BirthDateAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f14256a = new Pe("appmetrica_birth_date", new Dn(), new Xe());

    private Calendar b(int i10) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        return gregorianCalendar;
    }

    private Calendar c(int i10, int i11) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        gregorianCalendar.set(2, i11 - 1);
        gregorianCalendar.set(5, 1);
        return gregorianCalendar;
    }

    private Calendar d(int i10, int i11, int i12) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i10);
        gregorianCalendar.set(2, i11 - 1);
        gregorianCalendar.set(5, i12);
        return gregorianCalendar;
    }

    UserProfileUpdate a(Calendar calendar, String str, Ke ke2) {
        return new UserProfileUpdate(new Ye(this.f14256a.a(), new SimpleDateFormat(str).format(calendar.getTime()), new Ym(), new Dn(), ke2));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withAge(int i10) {
        return a(b(Calendar.getInstance(Locale.US).get(1) - i10), "yyyy", new Me(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withAgeIfUndefined(int i10) {
        return a(b(Calendar.getInstance(Locale.US).get(1) - i10), "yyyy", new We(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDate(int i10) {
        return a(b(i10), "yyyy", new Me(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDateIfUndefined(int i10) {
        return a(b(i10), "yyyy", new We(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(0, this.f14256a.a(), new Dn(), new Xe()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDate(int i10, int i11) {
        return a(c(i10, i11), "yyyy-MM", new Me(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDateIfUndefined(int i10, int i11) {
        return a(c(i10, i11), "yyyy-MM", new We(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDate(int i10, int i11, int i12) {
        return a(d(i10, i11, i12), "yyyy-MM-dd", new Me(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDateIfUndefined(int i10, int i11, int i12) {
        return a(d(i10, i11, i12), "yyyy-MM-dd", new We(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDate(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", new Me(this.f14256a.c()));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withBirthDateIfUndefined(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", new We(this.f14256a.c()));
    }
}
