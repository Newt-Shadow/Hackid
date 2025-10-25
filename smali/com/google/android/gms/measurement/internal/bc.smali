.class final synthetic Lcom/google/android/gms/measurement/internal/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/cc;

.field private final synthetic b:I

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/p5;

.field private final synthetic d:Landroid/content/Intent;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/cc;ILcom/google/android/gms/measurement/internal/p5;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bc;->a:Lcom/google/android/gms/measurement/internal/cc;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/bc;->b:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/bc;->c:Lcom/google/android/gms/measurement/internal/p5;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/bc;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bc;->a:Lcom/google/android/gms/measurement/internal/cc;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/bc;->b:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/bc;->c:Lcom/google/android/gms/measurement/internal/p5;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/bc;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/cc;->f(ILcom/google/android/gms/measurement/internal/p5;Landroid/content/Intent;)V

    return-void
.end method
