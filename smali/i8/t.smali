.class public final synthetic Li8/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Li8/v;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lo0/f$a;


# direct methods
.method public synthetic constructor <init>(Li8/v;Ljava/lang/String;Ljava/lang/String;Lo0/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/t;->a:Li8/v;

    iput-object p2, p0, Li8/t;->b:Ljava/lang/String;

    iput-object p3, p0, Li8/t;->c:Ljava/lang/String;

    iput-object p4, p0, Li8/t;->d:Lo0/f$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Li8/t;->a:Li8/v;

    iget-object v1, p0, Li8/t;->b:Ljava/lang/String;

    iget-object v2, p0, Li8/t;->c:Ljava/lang/String;

    iget-object v3, p0, Li8/t;->d:Lo0/f$a;

    check-cast p1, Lo0/c;

    invoke-static {v0, v1, v2, v3, p1}, Li8/v;->c(Li8/v;Ljava/lang/String;Ljava/lang/String;Lo0/f$a;Lo0/c;)Lxc/t;

    move-result-object p1

    return-object p1
.end method
