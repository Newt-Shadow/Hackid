.class final synthetic Lcom/google/android/gms/internal/measurement/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Ljava/lang/Runnable;


# direct methods
.method synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t8;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t8;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/t8;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t8;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/t8;->c:Ljava/lang/Runnable;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/u8;->g(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/u8;

    move-result-object p1

    return-object p1
.end method
