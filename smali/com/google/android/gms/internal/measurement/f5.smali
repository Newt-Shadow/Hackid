.class public final Lcom/google/android/gms/internal/measurement/f5;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/f5;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/measurement/nb;

.field private zze:Lcom/google/android/gms/internal/measurement/nb;

.field private zzf:Lcom/google/android/gms/internal/measurement/nb;

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/measurement/nb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/f5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/f5;->zzi:Lcom/google/android/gms/internal/measurement/f5;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/f5;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    .line 27
    .line 28
    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/measurement/f5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/f5;->zzi:Lcom/google/android/gms/internal/measurement/f5;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/measurement/f5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/f5;->zzi:Lcom/google/android/gms/internal/measurement/f5;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/f5;->zzi:Lcom/google/android/gms/internal/measurement/f5;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p3

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/r4;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/r4;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/f5;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/f5;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string v0, "zzb"

    .line 35
    .line 36
    const-string v1, "zzd"

    .line 37
    .line 38
    const-class v2, Lcom/google/android/gms/internal/measurement/t4;

    .line 39
    .line 40
    const-string v3, "zze"

    .line 41
    .line 42
    const-class v4, Lcom/google/android/gms/internal/measurement/v4;

    .line 43
    .line 44
    const-string v5, "zzf"

    .line 45
    .line 46
    const-class v6, Lcom/google/android/gms/internal/measurement/c5;

    .line 47
    .line 48
    const-string v7, "zzg"

    .line 49
    .line 50
    const-string v8, "zzh"

    .line 51
    .line 52
    const-class v9, Lcom/google/android/gms/internal/measurement/t4;

    .line 53
    .line 54
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object p2, Lcom/google/android/gms/internal/measurement/f5;->zzi:Lcom/google/android/gms/internal/measurement/f5;

    .line 59
    .line 60
    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u1007\u0000\u0005\u001b"

    .line 61
    .line 62
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_4
    const/4 p1, 0x1

    .line 68
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final C()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zze:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final E()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzg:Z

    return v0
.end method

.method public final H()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method
