.class final synthetic Lcom/google/android/gms/measurement/internal/p9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field static final synthetic a:Lcom/google/android/gms/measurement/internal/p9;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/p9;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/p9;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/p9;->a:Lcom/google/android/gms/measurement/internal/p9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/measurement/internal/rc;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/rc;->b:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
