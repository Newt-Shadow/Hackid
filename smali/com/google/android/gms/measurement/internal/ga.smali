.class final Lcom/google/android/gms/measurement/internal/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/la;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/la;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ga;->a:Lcom/google/android/gms/measurement/internal/la;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ga;->a:Lcom/google/android/gms/measurement/internal/la;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/la;->D()Lcom/google/android/gms/measurement/internal/da;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    return-void
.end method
