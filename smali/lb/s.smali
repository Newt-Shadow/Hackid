.class public final synthetic Llb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llb/u;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Leb/i;

.field public final synthetic f:Leb/i;


# direct methods
.method public synthetic constructor <init>(Llb/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb/s;->a:Llb/u;

    iput-object p2, p0, Llb/s;->b:Ljava/lang/String;

    iput-object p3, p0, Llb/s;->c:Ljava/lang/String;

    iput-object p4, p0, Llb/s;->d:Ljava/util/Map;

    iput-object p5, p0, Llb/s;->e:Leb/i;

    iput-object p6, p0, Llb/s;->f:Leb/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Llb/s;->a:Llb/u;

    iget-object v1, p0, Llb/s;->b:Ljava/lang/String;

    iget-object v2, p0, Llb/s;->c:Ljava/lang/String;

    iget-object v3, p0, Llb/s;->d:Ljava/util/Map;

    iget-object v4, p0, Llb/s;->e:Leb/i;

    iget-object v5, p0, Llb/s;->f:Leb/i;

    invoke-static/range {v0 .. v5}, Llb/u;->a(Llb/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V

    return-void
.end method
