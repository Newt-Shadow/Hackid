package com.yandex.metrica.impl.ob;

import android.webkit.WebView;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
class Gl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Il f10135a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ WebView f10136b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ CountDownLatch f10137c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Gl(Hl hl, Il il, WebView webView, CountDownLatch countDownLatch) {
        this.f10135a = il;
        this.f10136b = webView;
        this.f10137c = countDownLatch;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f10135a.f10448h = this.f10136b.getUrl();
            this.f10135a.f10449i = this.f10136b.getOriginalUrl();
            this.f10137c.countDown();
        } catch (Throwable unused) {
        }
    }
}
