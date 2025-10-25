package l5;

import java.util.Arrays;
/* loaded from: classes.dex */
final class z extends y {

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f25327g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f25327g = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // l5.y
    public final byte[] e1() {
        return this.f25327g;
    }
}
