.class final synthetic Lcom/google/android/gms/measurement/internal/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/n0;


# static fields
.field static final synthetic a:Lcom/google/android/gms/measurement/internal/l1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/l1;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/l1;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/l1;->a:Lcom/google/android/gms/measurement/internal/l1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/c5;->b:Lcom/google/android/gms/measurement/internal/b5;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zd;->p()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
