package da;

import android.media.Image;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.m;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;
/* loaded from: classes.dex */
public abstract class a {
    public static final Mat a(Image image) {
        int i10;
        m.e(image, "<this>");
        Mat mat = new Mat();
        Image.Plane[] planes = image.getPlanes();
        m.d(planes, "getPlanes(...)");
        int width = image.getWidth();
        int height = image.getHeight();
        if (planes[1].getPixelStride() == 2) {
            planes[0].getPixelStride();
            planes[2].getPixelStride();
            ByteBuffer buffer = planes[0].getBuffer();
            int rowStride = planes[0].getRowStride();
            ByteBuffer buffer2 = planes[1].getBuffer();
            int rowStride2 = planes[1].getRowStride();
            ByteBuffer buffer3 = planes[2].getBuffer();
            int rowStride3 = planes[2].getRowStride();
            Mat mat2 = new Mat(height, width, lf.a.f25544a, buffer, rowStride);
            int i11 = height / 2;
            int i12 = width / 2;
            int i13 = lf.a.f25545b;
            Mat mat3 = new Mat(i11, i12, i13, buffer2, rowStride2);
            Mat mat4 = new Mat(i11, i12, i13, buffer3, rowStride3);
            if (mat4.b() - mat3.b() > 0) {
                Imgproc.b(mat2, mat3, mat, 90);
            } else {
                Imgproc.b(mat2, mat4, mat, 92);
            }
        } else {
            int i14 = height / 2;
            int i15 = height + i14;
            byte[] bArr = new byte[width * i15];
            ByteBuffer buffer4 = planes[0].getBuffer();
            ByteBuffer buffer5 = planes[1].getBuffer();
            ByteBuffer buffer6 = planes[2].getBuffer();
            int rowStride4 = planes[0].getRowStride();
            if (rowStride4 == width) {
                i10 = width * height;
                buffer4.get(bArr, 0, i10);
            } else {
                int i16 = rowStride4 - width;
                int i17 = 0;
                for (int i18 = 0; i18 < height; i18++) {
                    buffer4.get(bArr, i17, width);
                    i17 += width;
                    if (i18 < height - 1) {
                        buffer4.position(buffer4.position() + i16);
                    }
                }
                i10 = i17;
            }
            int i19 = width / 2;
            int rowStride5 = planes[1].getRowStride() - i19;
            if (rowStride5 == 0) {
                int i20 = (height * width) / 4;
                buffer5.get(bArr, i10, i20);
                buffer6.get(bArr, i10 + i20, i20);
            } else {
                for (int i21 = 0; i21 < i14; i21++) {
                    buffer5.get(bArr, i10, i19);
                    i10 += i19;
                    if (i21 < i14 - 1) {
                        buffer5.position(buffer5.position() + rowStride5);
                    }
                }
                for (int i22 = 0; i22 < i14; i22++) {
                    buffer6.get(bArr, i10, i19);
                    i10 += i19;
                    if (i22 < i14 - 1) {
                        buffer6.position(buffer6.position() + rowStride5);
                    }
                }
            }
            Mat mat5 = new Mat(i15, width, lf.a.f25544a);
            mat5.g(0, 0, bArr);
            Imgproc.a(mat5, mat, 100, 4);
        }
        return mat;
    }
}
