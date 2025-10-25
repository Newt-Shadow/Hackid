package n5;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes.dex */
final class d0 extends f0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f26268a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Activity f26269b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f26270c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(Intent intent, Activity activity, int i10) {
        this.f26268a = intent;
        this.f26269b = activity;
        this.f26270c = i10;
    }

    @Override // n5.f0
    public final void a() {
        Intent intent = this.f26268a;
        if (intent != null) {
            this.f26269b.startActivityForResult(intent, this.f26270c);
        }
    }
}
