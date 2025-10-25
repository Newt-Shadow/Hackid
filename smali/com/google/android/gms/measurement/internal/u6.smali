.class final Lcom/google/android/gms/measurement/internal/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/f8;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/w6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w6;Lcom/google/android/gms/measurement/internal/f8;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u6;->a:Lcom/google/android/gms/measurement/internal/f8;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u6;->b:Lcom/google/android/gms/measurement/internal/w6;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u6;->b:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u6;->a:Lcom/google/android/gms/measurement/internal/f8;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/w6;->p(Lcom/google/android/gms/measurement/internal/f8;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/f8;->d:Lcom/google/android/gms/internal/measurement/g2;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/w6;->v(Lcom/google/android/gms/internal/measurement/g2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
