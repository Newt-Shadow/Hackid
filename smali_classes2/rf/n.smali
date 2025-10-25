.class public final Lrf/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lqf/d;

.field private final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lqf/d;)V
    .locals 1

    .line 1
    const-string v0, "ref"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lrf/n;->a:Lqf/d;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lrf/n;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lrf/n;Lrf/p;Landroid/media/SoundPool;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lrf/n;->c(Lrf/n;Lrf/p;Landroid/media/SoundPool;II)V

    return-void
.end method

.method private static final c(Lrf/n;Lrf/p;Landroid/media/SoundPool;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lrf/n;->a:Lqf/d;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p4, "Loaded "

    .line 9
    .line 10
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lqf/d;->m(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lrf/p;->b()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lrf/o;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lrf/o;->r()Lsf/d;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p2, 0x0

    .line 45
    :goto_0
    if-eqz p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lrf/p;->b()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p0}, Lrf/o;->p()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p3}, Lkotlin/jvm/internal/g0;->b(Ljava/lang/Object;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-interface {p3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lrf/p;->d()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lrf/p;->d()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/List;

    .line 76
    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Lrf/o;

    .line 98
    .line 99
    invoke-virtual {p2}, Lrf/o;->s()Lrf/s;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    new-instance p4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v0, "Marking "

    .line 109
    .line 110
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, " as loaded"

    .line 117
    .line 118
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    invoke-virtual {p3, p4}, Lrf/s;->t(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lrf/o;->s()Lrf/s;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    const/4 p4, 0x1

    .line 133
    invoke-virtual {p3, p4}, Lrf/s;->J(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lrf/o;->s()Lrf/s;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p3}, Lrf/s;->o()Z

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    if-eqz p3, :cond_2

    .line 145
    .line 146
    invoke-virtual {p2}, Lrf/o;->s()Lrf/s;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    new-instance p4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v0, "Delayed start of "

    .line 156
    .line 157
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p4

    .line 167
    invoke-virtual {p3, p4}, Lrf/s;->t(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lrf/o;->start()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_3
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    monitor-exit p0

    .line 177
    goto :goto_2

    .line 178
    :catchall_0
    move-exception p1

    .line 179
    monitor-exit p0

    .line 180
    throw p1

    .line 181
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final b(ILqf/a;)V
    .locals 3

    .line 1
    const-string v0, "audioContext"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lqf/a;->a()Landroid/media/AudioAttributes;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p0, Lrf/n;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/media/SoundPool$Builder;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lrf/n;->a:Lqf/d;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "Create SoundPool with "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lqf/d;->m(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lrf/p;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p1}, Lrf/p;-><init>(Landroid/media/SoundPool;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lrf/p;->c()Landroid/media/SoundPool;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v1, Lrf/m;

    .line 70
    .line 71
    invoke-direct {v1, p0, v0}, Lrf/m;-><init>(Lrf/n;Lrf/p;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lrf/n;->b:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/n;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lrf/p;

    .line 28
    .line 29
    invoke-virtual {v1}, Lrf/p;->a()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lrf/n;->b:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final e(Lqf/a;)Lrf/p;
    .locals 1

    .line 1
    const-string v0, "audioContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lqf/a;->a()Landroid/media/AudioAttributes;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lrf/n;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lrf/p;

    .line 17
    .line 18
    return-object p1
.end method
