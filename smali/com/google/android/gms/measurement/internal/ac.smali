.class final synthetic Lcom/google/android/gms/measurement/internal/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/cc;

.field private final synthetic b:Landroid/app/job/JobParameters;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/cc;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ac;->a:Lcom/google/android/gms/measurement/internal/cc;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ac;->b:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ac;->a:Lcom/google/android/gms/measurement/internal/cc;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ac;->b:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/cc;->h(Landroid/app/job/JobParameters;)V

    return-void
.end method
