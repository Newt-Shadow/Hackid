package io.sentry.android.core;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
/* loaded from: classes2.dex */
abstract class c1 extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.e f22181a = new io.sentry.android.core.internal.util.e();

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        this.f22181a.a(this);
        return 0;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        this.f22181a.a(this);
        return null;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        this.f22181a.a(this);
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        this.f22181a.a(this);
        return 0;
    }
}
