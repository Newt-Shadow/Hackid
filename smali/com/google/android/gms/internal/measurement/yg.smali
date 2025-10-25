.class public final Lcom/google/android/gms/internal/measurement/yg;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "internal.platform"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/measurement/xg;

    .line 9
    .line 10
    const-string v2, "getVersion"

    .line 11
    .line 12
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/xg;-><init>(Lcom/google/android/gms/internal/measurement/yg;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    return-object p1
.end method
