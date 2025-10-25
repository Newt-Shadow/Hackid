.class public final synthetic Lcom/google/android/gms/ads/identifier/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/g;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/identifier/f;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/identifier/f;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/c;->a:Lcom/google/android/gms/ads/identifier/f;

    iput-wide p2, p0, Lcom/google/android/gms/ads/identifier/c;->b:J

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/c;->a:Lcom/google/android/gms/ads/identifier/f;

    iget-wide v1, p0, Lcom/google/android/gms/ads/identifier/c;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/ads/identifier/f;->b(Lcom/google/android/gms/ads/identifier/f;JLjava/lang/Exception;)V

    return-void
.end method
