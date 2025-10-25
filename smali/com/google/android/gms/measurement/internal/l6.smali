.class final synthetic Lcom/google/android/gms/measurement/internal/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/o6;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/o6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l6;->a:Lcom/google/android/gms/measurement/internal/o6;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->a:Lcom/google/android/gms/measurement/internal/o6;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/measurement/tg;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o6;->k:Lcom/google/android/gms/internal/measurement/yf;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/tg;-><init>(Lcom/google/android/gms/internal/measurement/yf;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method
