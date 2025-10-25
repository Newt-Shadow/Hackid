.class final Lcom/google/android/gms/measurement/internal/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/qd;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/pd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;Lcom/google/android/gms/measurement/internal/qd;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/dd;->a:Lcom/google/android/gms/measurement/internal/qd;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/dd;->b:Lcom/google/android/gms/measurement/internal/pd;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dd;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dd;->a:Lcom/google/android/gms/measurement/internal/qd;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/pd;->u0(Lcom/google/android/gms/measurement/internal/qd;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->A0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
