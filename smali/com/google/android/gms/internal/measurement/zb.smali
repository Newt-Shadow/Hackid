.class final Lcom/google/android/gms/internal/measurement/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/uc;


# static fields
.field private static final b:Lcom/google/android/gms/internal/measurement/gc;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/xb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/xb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zb;->b:Lcom/google/android/gms/internal/measurement/gc;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/yb;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/gc;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/eb;->c()Lcom/google/android/gms/internal/measurement/eb;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/measurement/zb;->b:Lcom/google/android/gms/internal/measurement/gc;

    .line 14
    .line 15
    sget v3, Lcom/google/android/gms/internal/measurement/qc;->d:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object v2, v1, v3

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/yb;-><init>([Lcom/google/android/gms/internal/measurement/gc;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zb;->a:Lcom/google/android/gms/internal/measurement/gc;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/tc;
    .locals 8

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 2
    .line 3
    const-class v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget v0, Lcom/google/android/gms/internal/measurement/qc;->d:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zb;->a:Lcom/google/android/gms/internal/measurement/gc;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/gc;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/fc;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/fc;->zza()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget v0, Lcom/google/android/gms/internal/measurement/qc;->d:I

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/oc;->a()Lcom/google/android/gms/internal/measurement/nc;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ub;->a()Lcom/google/android/gms/internal/measurement/tb;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/vc;->a()Lcom/google/android/gms/internal/measurement/ed;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/fc;->f()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-eq v0, v1, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->a()Lcom/google/android/gms/internal/measurement/va;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    move-object v6, v0

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ec;->a()Lcom/google/android/gms/internal/measurement/dc;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    move-object v1, p1

    .line 60
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/lc;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/fc;Lcom/google/android/gms/internal/measurement/nc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/dc;)Lcom/google/android/gms/internal/measurement/lc;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_2
    sget p1, Lcom/google/android/gms/internal/measurement/qc;->d:I

    .line 66
    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/measurement/vc;->a()Lcom/google/android/gms/internal/measurement/ed;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->a()Lcom/google/android/gms/internal/measurement/va;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/fc;->e()Lcom/google/android/gms/internal/measurement/ic;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/mc;->i(Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/ic;)Lcom/google/android/gms/internal/measurement/mc;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method
