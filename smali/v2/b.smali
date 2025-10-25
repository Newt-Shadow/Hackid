.class public final synthetic Lv2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/b$a;


# instance fields
.field public final synthetic a:Lv2/c;

.field public final synthetic b:Lp2/p;

.field public final synthetic c:Lp2/i;


# direct methods
.method public synthetic constructor <init>(Lv2/c;Lp2/p;Lp2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/b;->a:Lv2/c;

    iput-object p2, p0, Lv2/b;->b:Lp2/p;

    iput-object p3, p0, Lv2/b;->c:Lp2/i;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lv2/b;->a:Lv2/c;

    iget-object v1, p0, Lv2/b;->b:Lp2/p;

    iget-object v2, p0, Lv2/b;->c:Lp2/i;

    invoke-static {v0, v1, v2}, Lv2/c;->c(Lv2/c;Lp2/p;Lp2/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
