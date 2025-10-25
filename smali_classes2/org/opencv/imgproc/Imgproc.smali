.class public abstract Lorg/opencv/imgproc/Imgproc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    .line 4
    .line 5
    move v4, p2

    .line 6
    move v5, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/Imgproc;->cvtColor_0(JJII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static b(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    .line 4
    .line 5
    iget-wide v4, p2, Lorg/opencv/core/Mat;->a:J

    .line 6
    .line 7
    move v6, p3

    .line 8
    invoke-static/range {v0 .. v6}, Lorg/opencv/imgproc/Imgproc;->cvtColorTwoPlane_0(JJJI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static native cvtColorTwoPlane_0(JJJI)V
.end method

.method private static native cvtColor_0(JJII)V
.end method
