.class public final synthetic Lrf/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic a:Lrf/n;

.field public final synthetic b:Lrf/p;


# direct methods
.method public synthetic constructor <init>(Lrf/n;Lrf/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/m;->a:Lrf/n;

    iput-object p2, p0, Lrf/m;->b:Lrf/p;

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/m;->a:Lrf/n;

    iget-object v1, p0, Lrf/m;->b:Lrf/p;

    invoke-static {v0, v1, p1, p2, p3}, Lrf/n;->a(Lrf/n;Lrf/p;Landroid/media/SoundPool;II)V

    return-void
.end method
