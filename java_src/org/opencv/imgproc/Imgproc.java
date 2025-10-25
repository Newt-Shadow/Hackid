package org.opencv.imgproc;

import org.opencv.core.Mat;
/* loaded from: classes2.dex */
public abstract class Imgproc {
    public static void a(Mat mat, Mat mat2, int i10, int i11) {
        cvtColor_0(mat.f27680a, mat2.f27680a, i10, i11);
    }

    public static void b(Mat mat, Mat mat2, Mat mat3, int i10) {
        cvtColorTwoPlane_0(mat.f27680a, mat2.f27680a, mat3.f27680a, i10);
    }

    private static native void cvtColorTwoPlane_0(long j10, long j11, long j12, int i10);

    private static native void cvtColor_0(long j10, long j11, int i10, int i11);
}
