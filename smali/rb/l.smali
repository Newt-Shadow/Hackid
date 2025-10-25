.class public final synthetic Lrb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lrb/o;

.field public final synthetic b:Lqb/c;


# direct methods
.method public synthetic constructor <init>(Lrb/o;Lqb/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/l;->a:Lrb/o;

    iput-object p2, p0, Lrb/l;->b:Lqb/c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lrb/l;->a:Lrb/o;

    iget-object v1, p0, Lrb/l;->b:Lqb/c;

    invoke-static {v0, v1}, Lrb/o;->i(Lrb/o;Lqb/c;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
