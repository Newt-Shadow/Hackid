.class public final synthetic Lv2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv2/c;

.field public final synthetic b:Lp2/p;

.field public final synthetic c:Ln2/k;

.field public final synthetic d:Lp2/i;


# direct methods
.method public synthetic constructor <init>(Lv2/c;Lp2/p;Ln2/k;Lp2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/a;->a:Lv2/c;

    iput-object p2, p0, Lv2/a;->b:Lp2/p;

    iput-object p3, p0, Lv2/a;->c:Ln2/k;

    iput-object p4, p0, Lv2/a;->d:Lp2/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv2/a;->a:Lv2/c;

    iget-object v1, p0, Lv2/a;->b:Lp2/p;

    iget-object v2, p0, Lv2/a;->c:Ln2/k;

    iget-object v3, p0, Lv2/a;->d:Lp2/i;

    invoke-static {v0, v1, v2, v3}, Lv2/c;->b(Lv2/c;Lp2/p;Ln2/k;Lp2/i;)V

    return-void
.end method
