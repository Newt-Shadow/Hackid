.class final Lcom/google/android/gms/measurement/internal/yb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/pd;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/cc;Lcom/google/android/gms/measurement/internal/pd;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/yb;->a:Lcom/google/android/gms/measurement/internal/pd;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/yb;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/yb;->a:Lcom/google/android/gms/measurement/internal/pd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->E()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/yb;->b:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/pd;->D(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->r()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
