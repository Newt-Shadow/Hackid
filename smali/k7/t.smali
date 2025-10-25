.class public final synthetic Lk7/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lh8/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lh8/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/t;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lk7/t;->b:Lh8/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/t;->a:Ljava/util/Map$Entry;

    iget-object v1, p0, Lk7/t;->b:Lh8/a;

    invoke-static {v0, v1}, Lk7/u;->e(Ljava/util/Map$Entry;Lh8/a;)V

    return-void
.end method
