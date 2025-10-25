.class public final Lcom/google/android/gms/internal/play_billing/g5;
.super Lcom/google/android/gms/internal/play_billing/b2;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/g3;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/h2;

.field private static final zzd:Lcom/google/android/gms/internal/play_billing/g5;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/g2;

.field private zzi:Lcom/google/android/gms/internal/play_billing/i2;

.field private zzj:Lcom/google/android/gms/internal/play_billing/z4;

.field private zzk:Z

.field private zzl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/a5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/a5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/g5;->zzb:Lcom/google/android/gms/internal/play_billing/h2;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g5;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/g5;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/play_billing/g5;->zzd:Lcom/google/android/gms/internal/play_billing/g5;

    .line 14
    .line 15
    const-class v1, Lcom/google/android/gms/internal/play_billing/g5;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/b2;->v(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b2;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/b2;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzf:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/b2;->o()Lcom/google/android/gms/internal/play_billing/g2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzh:Lcom/google/android/gms/internal/play_billing/g2;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/b2;->p()Lcom/google/android/gms/internal/play_billing/i2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzi:Lcom/google/android/gms/internal/play_billing/i2;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic B()Lcom/google/android/gms/internal/play_billing/g5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/g5;->zzd:Lcom/google/android/gms/internal/play_billing/g5;

    return-object v0
.end method

.method public static C([BLcom/google/android/gms/internal/play_billing/q1;)Lcom/google/android/gms/internal/play_billing/g5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/g5;->zzd:Lcom/google/android/gms/internal/play_billing/g5;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/b2;->n(Lcom/google/android/gms/internal/play_billing/b2;[BLcom/google/android/gms/internal/play_billing/q1;)Lcom/google/android/gms/internal/play_billing/b2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/play_billing/g5;

    .line 8
    .line 9
    return-object p0
.end method

.method static synthetic D(Lcom/google/android/gms/internal/play_billing/g5;Lcom/google/android/gms/internal/play_billing/x5;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzi:Lcom/google/android/gms/internal/play_billing/i2;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/i2;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/b2;->q(Lcom/google/android/gms/internal/play_billing/i2;)Lcom/google/android/gms/internal/play_billing/i2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzi:Lcom/google/android/gms/internal/play_billing/i2;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzi:Lcom/google/android/gms/internal/play_billing/i2;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/play_billing/g5;Lcom/google/android/gms/internal/play_billing/z4;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzj:Lcom/google/android/gms/internal/play_billing/z4;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    .line 11
    .line 12
    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/play_billing/g5;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzk:Z

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/play_billing/g5;Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzl:Z

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/internal/play_billing/g5;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzh:Lcom/google/android/gms/internal/play_billing/g2;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/i2;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/2addr v1, v1

    .line 19
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/g2;->u(I)Lcom/google/android/gms/internal/play_billing/g2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzh:Lcom/google/android/gms/internal/play_billing/g2;

    .line 24
    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d5;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzh:Lcom/google/android/gms/internal/play_billing/g2;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/d5;->zza()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/g2;->x(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/play_billing/g5;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/g5;->zze:I

    return-void
.end method

.method public static J()Lcom/google/android/gms/internal/play_billing/e5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/g5;->zzd:Lcom/google/android/gms/internal/play_billing/g5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/b2;->g()Lcom/google/android/gms/internal/play_billing/y1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/e5;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method protected final z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/g5;->zzd:Lcom/google/android/gms/internal/play_billing/g5;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/e5;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/e5;-><init>(Lcom/google/android/gms/internal/play_billing/a5;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/g5;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/g5;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string v0, "zze"

    .line 35
    .line 36
    const-string v1, "zzf"

    .line 37
    .line 38
    const-string v2, "zzg"

    .line 39
    .line 40
    sget-object v3, Lcom/google/android/gms/internal/play_billing/f5;->a:Lcom/google/android/gms/internal/play_billing/f2;

    .line 41
    .line 42
    const-string v4, "zzh"

    .line 43
    .line 44
    sget-object v5, Lcom/google/android/gms/internal/play_billing/c5;->a:Lcom/google/android/gms/internal/play_billing/f2;

    .line 45
    .line 46
    const-string v6, "zzi"

    .line 47
    .line 48
    const-class v7, Lcom/google/android/gms/internal/play_billing/x5;

    .line 49
    .line 50
    const-string v8, "zzj"

    .line 51
    .line 52
    const-string v9, "zzk"

    .line 53
    .line 54
    const-string v10, "zzl"

    .line 55
    .line 56
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object p2, Lcom/google/android/gms/internal/play_billing/g5;->zzd:Lcom/google/android/gms/internal/play_billing/g5;

    .line 61
    .line 62
    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004"

    .line 63
    .line 64
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/b2;->s(Lcom/google/android/gms/internal/play_billing/f3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_4
    const/4 p1, 0x1

    .line 70
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method
