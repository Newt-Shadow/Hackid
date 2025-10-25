.class public final synthetic Li8/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Li8/v;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Li8/v;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/u;->a:Li8/v;

    iput-object p2, p0, Li8/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Li8/u;->a:Li8/v;

    iget-object v1, p0, Li8/u;->b:Ljava/lang/String;

    check-cast p1, Lo0/c;

    invoke-static {v0, v1, p1}, Li8/v;->d(Li8/v;Ljava/lang/String;Lo0/c;)Lxc/t;

    move-result-object p1

    return-object p1
.end method
