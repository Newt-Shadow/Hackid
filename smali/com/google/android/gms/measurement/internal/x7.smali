.class final synthetic Lcom/google/android/gms/measurement/internal/x7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/y7;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/ae;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/ae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x7;->b:Lcom/google/android/gms/measurement/internal/ae;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x7;->b:Lcom/google/android/gms/measurement/internal/ae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/y7;->k(Lcom/google/android/gms/measurement/internal/ae;)V

    return-void
.end method
