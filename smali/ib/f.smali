.class public final synthetic Lib/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lib/g;

.field public final synthetic c:Leb/h;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lib/g;Leb/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib/f;->a:Ljava/util/List;

    iput-object p2, p0, Lib/f;->b:Lib/g;

    iput-object p3, p0, Lib/f;->c:Leb/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lib/f;->a:Ljava/util/List;

    iget-object v1, p0, Lib/f;->b:Lib/g;

    iget-object v2, p0, Lib/f;->c:Leb/h;

    invoke-static {v0, v1, v2}, Lib/g;->a(Ljava/util/List;Lib/g;Leb/h;)V

    return-void
.end method
