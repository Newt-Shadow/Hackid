.class public final enum Lcom/google/android/gms/internal/play_billing/d5;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/d2;


# static fields
.field public static final enum b:Lcom/google/android/gms/internal/play_billing/d5;

.field public static final enum c:Lcom/google/android/gms/internal/play_billing/d5;

.field public static final enum d:Lcom/google/android/gms/internal/play_billing/d5;

.field public static final enum e:Lcom/google/android/gms/internal/play_billing/d5;

.field private static final f:Lcom/google/android/gms/internal/play_billing/e2;

.field private static final synthetic g:[Lcom/google/android/gms/internal/play_billing/d5;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/d5;

    .line 2
    .line 3
    const-string v1, "BROADCAST_ACTION_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_billing/d5;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/play_billing/d5;->b:Lcom/google/android/gms/internal/play_billing/d5;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/play_billing/d5;

    .line 12
    .line 13
    const-string v2, "PURCHASES_UPDATED_ACTION"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/play_billing/d5;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/internal/play_billing/d5;->c:Lcom/google/android/gms/internal/play_billing/d5;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/internal/play_billing/d5;

    .line 22
    .line 23
    const-string v3, "LOCAL_PURCHASES_UPDATED_ACTION"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/play_billing/d5;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/google/android/gms/internal/play_billing/d5;->d:Lcom/google/android/gms/internal/play_billing/d5;

    .line 30
    .line 31
    new-instance v3, Lcom/google/android/gms/internal/play_billing/d5;

    .line 32
    .line 33
    const-string v4, "ALTERNATIVE_BILLING_ACTION"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/play_billing/d5;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/google/android/gms/internal/play_billing/d5;->e:Lcom/google/android/gms/internal/play_billing/d5;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/play_billing/d5;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/play_billing/d5;->g:[Lcom/google/android/gms/internal/play_billing/d5;

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/gms/internal/play_billing/b5;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/b5;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/google/android/gms/internal/play_billing/d5;->f:Lcom/google/android/gms/internal/play_billing/e2;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/play_billing/d5;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/d5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d5;->g:[Lcom/google/android/gms/internal/play_billing/d5;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/d5;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/play_billing/d5;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/d5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/d5;->a:I

    return v0
.end method
