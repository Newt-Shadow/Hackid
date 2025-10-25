package m5;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x implements h.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BasePendingResult f25904a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z f25905b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(z zVar, BasePendingResult basePendingResult) {
        this.f25905b = zVar;
        this.f25904a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.h.a
    public final void a(Status status) {
        Map map;
        map = this.f25905b.f25910a;
        map.remove(this.f25904a);
    }
}
