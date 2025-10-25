.class public final synthetic Li8/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Li8/v;


# direct methods
.method public synthetic constructor <init>(Li8/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/s;->a:Li8/v;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li8/s;->a:Li8/v;

    check-cast p1, Lo0/c;

    invoke-static {v0, p1}, Li8/v;->a(Li8/v;Lo0/c;)Lxc/t;

    move-result-object p1

    return-object p1
.end method
