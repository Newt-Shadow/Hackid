.class final Lcom/google/android/gms/measurement/internal/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pb;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ib;->a:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ib;->b:Lcom/google/android/gms/measurement/internal/pb;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ib;->b:Lcom/google/android/gms/measurement/internal/pb;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/pb;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ib;->a:Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/vb;->K(Landroid/content/ComponentName;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
