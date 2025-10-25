.class public final synthetic Llb/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llb/u;

.field public final synthetic b:Leb/i;

.field public final synthetic c:Leb/i;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Llb/u;Leb/i;Leb/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb/t;->a:Llb/u;

    iput-object p2, p0, Llb/t;->b:Leb/i;

    iput-object p3, p0, Llb/t;->c:Leb/i;

    iput-object p4, p0, Llb/t;->d:Ljava/lang/String;

    iput-object p5, p0, Llb/t;->e:Ljava/lang/String;

    iput-object p6, p0, Llb/t;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Llb/t;->a:Llb/u;

    iget-object v1, p0, Llb/t;->b:Leb/i;

    iget-object v2, p0, Llb/t;->c:Leb/i;

    iget-object v3, p0, Llb/t;->d:Ljava/lang/String;

    iget-object v4, p0, Llb/t;->e:Ljava/lang/String;

    iget-object v5, p0, Llb/t;->f:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Llb/u;->b(Llb/u;Leb/i;Leb/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
