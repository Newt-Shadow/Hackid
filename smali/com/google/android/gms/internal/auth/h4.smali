.class public final Lcom/google/android/gms/internal/auth/h4;
.super Lcom/google/android/gms/internal/auth/b2;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/z2;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/auth/h4;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/auth/d2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/h4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/h4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/auth/h4;->zzb:Lcom/google/android/gms/internal/auth/h4;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/auth/h4;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/auth/b2;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/b2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/b2;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/auth/b2;->e()Lcom/google/android/gms/internal/auth/d2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/h4;->zzd:Lcom/google/android/gms/internal/auth/d2;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic q()Lcom/google/android/gms/internal/auth/h4;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/h4;->zzb:Lcom/google/android/gms/internal/auth/h4;

    return-object v0
.end method

.method public static r([B)Lcom/google/android/gms/internal/auth/h4;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/h4;->zzb:Lcom/google/android/gms/internal/auth/h4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/auth/b2;->d(Lcom/google/android/gms/internal/auth/b2;[B)Lcom/google/android/gms/internal/auth/b2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/auth/h4;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method protected final o(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    if-eq p1, p2, :cond_3

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    if-eq p1, p2, :cond_2

    .line 10
    .line 11
    const/4 p2, 0x4

    .line 12
    const/4 p3, 0x0

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x5

    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    return-object p3

    .line 19
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/auth/h4;->zzb:Lcom/google/android/gms/internal/auth/h4;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/auth/g4;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/auth/g4;-><init>(Lcom/google/android/gms/internal/auth/f4;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/auth/h4;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/auth/h4;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string p1, "zzd"

    .line 35
    .line 36
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object p2, Lcom/google/android/gms/internal/auth/h4;->zzb:Lcom/google/android/gms/internal/auth/h4;

    .line 41
    .line 42
    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 43
    .line 44
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/auth/b2;->i(Lcom/google/android/gms/internal/auth/y2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_4
    const/4 p1, 0x1

    .line 50
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final s()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/h4;->zzd:Lcom/google/android/gms/internal/auth/d2;

    return-object v0
.end method
