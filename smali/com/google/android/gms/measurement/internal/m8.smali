.class final Lcom/google/android/gms/measurement/internal/m8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/w9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w9;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m8;->a:Lcom/google/android/gms/measurement/internal/w9;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m8;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/w9;->r:Lcom/google/android/gms/measurement/internal/ge;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ge;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
