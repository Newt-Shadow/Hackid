package io.appmetrica.analytics.impl;

import android.os.FileObserver;
import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;
/* renamed from: io.appmetrica.analytics.impl.t6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class FileObserverC1511t6 extends FileObserver {

    /* renamed from: a  reason: collision with root package name */
    public final Consumer f20649a;

    /* renamed from: b  reason: collision with root package name */
    public final File f20650b;

    /* renamed from: c  reason: collision with root package name */
    public final C1341ma f20651c;

    public FileObserverC1511t6(File file, E1 e12, C1341ma c1341ma) {
        super(file.getAbsolutePath(), 4095);
        this.f20649a = e12;
        this.f20650b = file;
        this.f20651c = c1341ma;
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i10, String str) {
        if (i10 == 8 && !TextUtils.isEmpty(str)) {
            Consumer consumer = this.f20649a;
            C1341ma c1341ma = this.f20651c;
            File file = this.f20650b;
            c1341ma.getClass();
            consumer.consume(new File(file, str));
        }
    }
}
