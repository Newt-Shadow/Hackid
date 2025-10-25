package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.List;
import n5.o;
import n5.q;
import o5.c;
/* loaded from: classes.dex */
public class TokenData extends o5.a implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f5790a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5791b;

    /* renamed from: c  reason: collision with root package name */
    private final Long f5792c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5793d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f5794e;

    /* renamed from: f  reason: collision with root package name */
    private final List f5795f;

    /* renamed from: g  reason: collision with root package name */
    private final String f5796g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TokenData(int i10, String str, Long l10, boolean z10, boolean z11, List list, String str2) {
        this.f5790a = i10;
        this.f5791b = q.e(str);
        this.f5792c = l10;
        this.f5793d = z10;
        this.f5794e = z11;
        this.f5795f = list;
        this.f5796g = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        if (!TextUtils.equals(this.f5791b, tokenData.f5791b) || !o.a(this.f5792c, tokenData.f5792c) || this.f5793d != tokenData.f5793d || this.f5794e != tokenData.f5794e || !o.a(this.f5795f, tokenData.f5795f) || !o.a(this.f5796g, tokenData.f5796g)) {
            return false;
        }
        return true;
    }

    public final String g() {
        return this.f5791b;
    }

    public final int hashCode() {
        return o.b(this.f5791b, this.f5792c, Boolean.valueOf(this.f5793d), Boolean.valueOf(this.f5794e), this.f5795f, this.f5796g);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = c.a(parcel);
        c.k(parcel, 1, this.f5790a);
        c.q(parcel, 2, this.f5791b, false);
        c.o(parcel, 3, this.f5792c, false);
        c.c(parcel, 4, this.f5793d);
        c.c(parcel, 5, this.f5794e);
        c.r(parcel, 6, this.f5795f, false);
        c.q(parcel, 7, this.f5796g, false);
        c.b(parcel, a10);
    }
}
