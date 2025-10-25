.class public final Lcom/google/android/gms/internal/measurement/d8;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/d8;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/measurement/nb;

.field private zze:Lcom/google/android/gms/internal/measurement/y7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/d8;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d8;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/d8;->zzf:Lcom/google/android/gms/internal/measurement/d8;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/d8;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/hb;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/hb;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hb;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d8;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic E()Lcom/google/android/gms/internal/measurement/d8;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/d8;->zzf:Lcom/google/android/gms/internal/measurement/d8;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/measurement/d8;->zzf:Lcom/google/android/gms/internal/measurement/d8;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p3

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/b8;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/b8;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/d8;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/d8;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-class p1, Lcom/google/android/gms/internal/measurement/h8;

    .line 35
    .line 36
    const-string p2, "zze"

    .line 37
    .line 38
    const-string p3, "zzb"

    .line 39
    .line 40
    const-string v0, "zzd"

    .line 41
    .line 42
    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object p2, Lcom/google/android/gms/internal/measurement/d8;->zzf:Lcom/google/android/gms/internal/measurement/d8;

    .line 47
    .line 48
    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    .line 49
    .line 50
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_4
    const/4 p1, 0x1

    .line 56
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final C()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d8;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/internal/measurement/y7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d8;->zze:Lcom/google/android/gms/internal/measurement/y7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/y7;->E()Lcom/google/android/gms/internal/measurement/y7;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method
