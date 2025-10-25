.class public final synthetic Lq7/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq7/d0;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lq7/d0;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/b0;->a:Lq7/d0;

    iput-object p2, p0, Lq7/b0;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lq7/b0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq7/b0;->a:Lq7/d0;

    iget-object v1, p0, Lq7/b0;->b:Ljava/lang/Throwable;

    iget-object v2, p0, Lq7/b0;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lq7/d0;->c(Lq7/d0;Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method
