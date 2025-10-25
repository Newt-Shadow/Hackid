.class public abstract Lcom/google/android/gms/internal/play_billing/m1;
.super Lcom/google/android/gms/internal/play_billing/t0;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Z


# instance fields
.field a:Lcom/google/android/gms/internal/play_billing/n1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/play_billing/m1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/m1;->b:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/f4;->C()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/m1;->c:Z

    .line 18
    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/t0;-><init>()V

    return-void
.end method

.method static bridge synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/m1;->c:Z

    return v0
.end method

.method static t(ILcom/google/android/gms/internal/play_billing/f3;Lcom/google/android/gms/internal/play_billing/q3;)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/2addr p0, p0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/play_billing/o0;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/o0;->b(Lcom/google/android/gms/internal/play_billing/q3;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/2addr p0, p1

    .line 15
    return p0
.end method

.method static u(Lcom/google/android/gms/internal/play_billing/f3;Lcom/google/android/gms/internal/play_billing/q3;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/o0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->b(Lcom/google/android/gms/internal/play_billing/q3;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr p1, p0

    .line 12
    return p1
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/l4;->c(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/k4; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static w(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x160

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static x(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x280

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static y([BII)Lcom/google/android/gms/internal/play_billing/m1;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/j1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/j1;-><init>([BII)V

    .line 5
    .line 6
    .line 7
    return-object p1
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/k4;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/m1;->b:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 4
    .line 5
    const-string v2, "com.google.protobuf.CodedOutputStream"

    .line 6
    .line 7
    const-string v3, "inefficientWriteStringNoTag"

    .line 8
    .line 9
    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    array-length p2, p1

    .line 22
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/m1;->q(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/m1;->m([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    new-instance p2, Lcom/google/android/gms/internal/play_billing/k1;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/k1;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p2
.end method

.method public abstract c()I
.end method

.method public abstract d(B)V
.end method

.method public abstract e(IZ)V
.end method

.method public abstract f(ILcom/google/android/gms/internal/play_billing/e1;)V
.end method

.method public abstract g(II)V
.end method

.method public abstract h(I)V
.end method

.method public abstract i(IJ)V
.end method

.method public abstract j(J)V
.end method

.method public abstract k(II)V
.end method

.method public abstract l(I)V
.end method

.method public abstract m([BII)V
.end method

.method public abstract n(ILjava/lang/String;)V
.end method

.method public abstract o(II)V
.end method

.method public abstract p(II)V
.end method

.method public abstract q(I)V
.end method

.method public abstract r(IJ)V
.end method

.method public abstract s(J)V
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/m1;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Did not write as much data as expected."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
