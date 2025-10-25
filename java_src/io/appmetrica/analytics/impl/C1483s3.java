package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.s3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1483s3 implements InterfaceC1508t3 {

    /* renamed from: a  reason: collision with root package name */
    public final int f20571a;

    public C1483s3(int i10) {
        this.f20571a = i10;
    }

    public static InterfaceC1508t3 a(InterfaceC1508t3... interfaceC1508t3Arr) {
        return new C1483s3(b(interfaceC1508t3Arr));
    }

    public static int b(InterfaceC1508t3... interfaceC1508t3Arr) {
        int i10 = 0;
        for (InterfaceC1508t3 interfaceC1508t3 : interfaceC1508t3Arr) {
            if (interfaceC1508t3 != null) {
                i10 = interfaceC1508t3.getBytesTruncated() + i10;
            }
        }
        return i10;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1508t3
    public final int getBytesTruncated() {
        return this.f20571a;
    }

    public String toString() {
        return "BytesTruncatedInfo{bytesTruncated=" + this.f20571a + '}';
    }
}
