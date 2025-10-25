package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import n5.o;
/* loaded from: classes.dex */
public final class Status extends o5.a implements k, ReflectedParcelable {

    /* renamed from: a  reason: collision with root package name */
    private final int f5872a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5873b;

    /* renamed from: c  reason: collision with root package name */
    private final PendingIntent f5874c;

    /* renamed from: d  reason: collision with root package name */
    private final l5.b f5875d;

    /* renamed from: e  reason: collision with root package name */
    public static final Status f5864e = new Status(-1);

    /* renamed from: f  reason: collision with root package name */
    public static final Status f5865f = new Status(0);

    /* renamed from: g  reason: collision with root package name */
    public static final Status f5866g = new Status(14);

    /* renamed from: h  reason: collision with root package name */
    public static final Status f5867h = new Status(8);

    /* renamed from: i  reason: collision with root package name */
    public static final Status f5868i = new Status(15);

    /* renamed from: j  reason: collision with root package name */
    public static final Status f5869j = new Status(16);

    /* renamed from: l  reason: collision with root package name */
    public static final Status f5871l = new Status(17);

    /* renamed from: k  reason: collision with root package name */
    public static final Status f5870k = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new r();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status(int i10, String str, PendingIntent pendingIntent, l5.b bVar) {
        this.f5872a = i10;
        this.f5873b = str;
        this.f5874c = pendingIntent;
        this.f5875d = bVar;
    }

    @Override // com.google.android.gms.common.api.k
    public Status d() {
        return this;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (this.f5872a != status.f5872a || !n5.o.a(this.f5873b, status.f5873b) || !n5.o.a(this.f5874c, status.f5874c) || !n5.o.a(this.f5875d, status.f5875d)) {
            return false;
        }
        return true;
    }

    public l5.b g() {
        return this.f5875d;
    }

    public int hashCode() {
        return n5.o.b(Integer.valueOf(this.f5872a), this.f5873b, this.f5874c, this.f5875d);
    }

    public int i() {
        return this.f5872a;
    }

    public String l() {
        return this.f5873b;
    }

    public boolean m() {
        return this.f5874c != null;
    }

    public boolean n() {
        return this.f5872a <= 0;
    }

    public void o(Activity activity, int i10) {
        Bundle bundle;
        if (!m()) {
            return;
        }
        if (com.google.android.gms.common.util.k.j()) {
            bundle = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle();
        } else {
            bundle = null;
        }
        Bundle bundle2 = bundle;
        PendingIntent pendingIntent = this.f5874c;
        n5.q.k(pendingIntent);
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0, bundle2);
    }

    public final String p() {
        String str = this.f5873b;
        if (str != null) {
            return str;
        }
        return c.a(this.f5872a);
    }

    public String toString() {
        o.a c10 = n5.o.c(this);
        c10.a("statusCode", p());
        c10.a("resolution", this.f5874c);
        return c10.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i());
        o5.c.q(parcel, 2, l(), false);
        o5.c.p(parcel, 3, this.f5874c, i10, false);
        o5.c.p(parcel, 4, g(), i10, false);
        o5.c.b(parcel, a10);
    }

    public Status(int i10) {
        this(i10, (String) null);
    }

    public Status(l5.b bVar, String str) {
        this(bVar, str, 17);
    }

    public Status(int i10, String str) {
        this(i10, str, (PendingIntent) null);
    }

    public Status(l5.b bVar, String str, int i10) {
        this(i10, str, bVar.l(), bVar);
    }

    public Status(int i10, String str, PendingIntent pendingIntent) {
        this(i10, str, pendingIntent, null);
    }
}
