.class final Lcom/google/android/gms/measurement/internal/md;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/pd;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/md;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/pd;->f()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/md;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/pd;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/md;-><init>(Lcom/google/android/gms/measurement/internal/pd;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/pd;[B)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/pd;->N0()Lcom/google/android/gms/measurement/internal/yd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/yd;->l0()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/md;-><init>(Lcom/google/android/gms/measurement/internal/pd;Ljava/lang/String;)V

    return-void
.end method
