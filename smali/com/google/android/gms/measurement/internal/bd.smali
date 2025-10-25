.class public final Lcom/google/android/gms/measurement/internal/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;

.field private final c:Li6/d0;

.field private final d:Lcom/google/android/gms/internal/measurement/u7;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Li6/d0;Lcom/google/android/gms/internal/measurement/u7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bd;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/bd;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/bd;->c:Li6/d0;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/bd;->d:Lcom/google/android/gms/internal/measurement/u7;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bd;->b:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final c()Li6/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bd;->c:Li6/d0;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/u7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bd;->d:Lcom/google/android/gms/internal/measurement/u7;

    return-object v0
.end method
