.class final synthetic Lcom/google/android/gms/measurement/internal/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/g;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/l5;

.field private final synthetic b:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/l5;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k5;->a:Lcom/google/android/gms/measurement/internal/l5;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/k5;->b:J

    return-void
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k5;->a:Lcom/google/android/gms/measurement/internal/l5;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/k5;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/l5;->c(JLjava/lang/Exception;)V

    return-void
.end method
