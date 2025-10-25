.class final synthetic Lcom/google/android/gms/measurement/internal/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/o6;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/o6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k6;->a:Lcom/google/android/gms/measurement/internal/o6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/k6;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ug;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/measurement/internal/m6;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/k6;->a:Lcom/google/android/gms/measurement/internal/o6;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/k6;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m6;-><init>(Lcom/google/android/gms/measurement/internal/o6;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "internal.appMetadata"

    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/ug;-><init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
