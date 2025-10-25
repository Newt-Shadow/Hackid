.class public final Lcom/google/android/gms/internal/measurement/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/ac;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/measurement/ac;

    const-string p4, ""

    invoke-direct {p2, p1, p4, p3, p4}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/bc;->a:Lcom/google/android/gms/internal/measurement/ac;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/bc;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/measurement/bc;

    const-string p3, ""

    invoke-direct {p1, p0, p3, p2, p3}, Lcom/google/android/gms/internal/measurement/bc;-><init>(Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/pd;Ljava/lang/Object;)V

    return-object p1
.end method

.method static b(Lcom/google/android/gms/internal/measurement/pa;Lcom/google/android/gms/internal/measurement/ac;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/pd;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/za;->c(Lcom/google/android/gms/internal/measurement/pa;Lcom/google/android/gms/internal/measurement/pd;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ac;->c:Lcom/google/android/gms/internal/measurement/pd;

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/za;->c(Lcom/google/android/gms/internal/measurement/pa;Lcom/google/android/gms/internal/measurement/pd;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static c(Lcom/google/android/gms/internal/measurement/ac;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/pd;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/ac;->c:Lcom/google/android/gms/internal/measurement/pd;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/za;->d(Lcom/google/android/gms/internal/measurement/pd;ILjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/za;->d(Lcom/google/android/gms/internal/measurement/pd;ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p1, p0

    .line 16
    return p1
.end method


# virtual methods
.method public final d(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bc;->a:Lcom/google/android/gms/internal/measurement/ac;

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/measurement/bc;->c(Lcom/google/android/gms/internal/measurement/ac;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    add-int/2addr p3, p2

    .line 18
    add-int/2addr p1, p3

    .line 19
    return p1
.end method

.method final e()Lcom/google/android/gms/internal/measurement/ac;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bc;->a:Lcom/google/android/gms/internal/measurement/ac;

    return-object v0
.end method
