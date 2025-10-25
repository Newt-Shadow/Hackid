package m5;

import java.util.Map;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y implements m6.f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m6.l f25907a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z f25908b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(z zVar, m6.l lVar) {
        this.f25908b = zVar;
        this.f25907a = lVar;
    }

    @Override // m6.f
    public final void onComplete(Task task) {
        Map map;
        map = this.f25908b.f25911b;
        map.remove(this.f25907a);
    }
}
