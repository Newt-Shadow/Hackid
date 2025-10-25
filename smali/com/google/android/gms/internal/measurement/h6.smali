.class public final Lcom/google/android/gms/internal/measurement/h6;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/h6;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/k7;

.field private zzf:Lcom/google/android/gms/internal/measurement/k7;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/h6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/h6;->zzh:Lcom/google/android/gms/internal/measurement/h6;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/h6;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/hb;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/hb;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hb;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static J()Lcom/google/android/gms/internal/measurement/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h6;->zzh:Lcom/google/android/gms/internal/measurement/h6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->o()Lcom/google/android/gms/internal/measurement/fb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/g6;

    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic O()Lcom/google/android/gms/internal/measurement/h6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h6;->zzh:Lcom/google/android/gms/internal/measurement/h6;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/h6;->zzh:Lcom/google/android/gms/internal/measurement/h6;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p3

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/g6;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/g6;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/h6;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/h6;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string p1, "zzf"

    .line 35
    .line 36
    const-string p2, "zzg"

    .line 37
    .line 38
    const-string p3, "zzb"

    .line 39
    .line 40
    const-string v0, "zzd"

    .line 41
    .line 42
    const-string v1, "zze"

    .line 43
    .line 44
    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object p2, Lcom/google/android/gms/internal/measurement/h6;->zzh:Lcom/google/android/gms/internal/measurement/h6;

    .line 49
    .line 50
    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    .line 51
    .line 52
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_4
    const/4 p1, 0x1

    .line 58
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzd:I

    return v0
.end method

.method public final E()Lcom/google/android/gms/internal/measurement/k7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zze:Lcom/google/android/gms/internal/measurement/k7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k7;->L()Lcom/google/android/gms/internal/measurement/k7;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G()Lcom/google/android/gms/internal/measurement/k7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzf:Lcom/google/android/gms/internal/measurement/k7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k7;->L()Lcom/google/android/gms/internal/measurement/k7;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzg:Z

    return v0
.end method

.method final synthetic K(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zzd:I

    return-void
.end method

.method final synthetic L(Lcom/google/android/gms/internal/measurement/k7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zze:Lcom/google/android/gms/internal/measurement/k7;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    .line 11
    .line 12
    return-void
.end method

.method final synthetic M(Lcom/google/android/gms/internal/measurement/k7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zzf:Lcom/google/android/gms/internal/measurement/k7;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    return-void
.end method

.method final synthetic N(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h6;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/h6;->zzg:Z

    return-void
.end method
