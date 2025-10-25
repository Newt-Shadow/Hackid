.class final synthetic Lcom/google/android/gms/measurement/internal/n6;
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

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n6;->a:Lcom/google/android/gms/measurement/internal/o6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/n6;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/vb;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/measurement/internal/j6;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/n6;->a:Lcom/google/android/gms/measurement/internal/o6;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/n6;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/j6;-><init>(Lcom/google/android/gms/measurement/internal/o6;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "internal.remoteConfig"

    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/vb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/wc;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
