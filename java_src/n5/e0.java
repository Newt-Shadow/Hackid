package n5;

import android.content.Intent;
/* loaded from: classes.dex */
final class e0 extends f0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f26287a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m5.i f26288b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(Intent intent, m5.i iVar, int i10) {
        this.f26287a = intent;
        this.f26288b = iVar;
    }

    @Override // n5.f0
    public final void a() {
        Intent intent = this.f26287a;
        if (intent != null) {
            this.f26288b.startActivityForResult(intent, 2);
        }
    }
}
