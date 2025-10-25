.class public Lcom/yandex/metrica/impl/ob/Xi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ca;

.field private final b:Lcom/yandex/metrica/impl/ob/Zi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ca;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ca;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Zi;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Zi;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Xi;-><init>(Lcom/yandex/metrica/impl/ob/ca;Lcom/yandex/metrica/impl/ob/Zi;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ca;Lcom/yandex/metrica/impl/ob/Zi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Xi;->a:Lcom/yandex/metrica/impl/ob/ca;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Xi;->b:Lcom/yandex/metrica/impl/ob/Zi;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/If$v;)Lcom/yandex/metrica/impl/ob/hl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xi;->a:Lcom/yandex/metrica/impl/ob/ca;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    .line 10
    .line 11
    const-string v1, "text_size_collecting"

    .line 12
    .line 13
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    .line 18
    .line 19
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    .line 20
    .line 21
    const-string v1, "relative_text_size_collecting"

    .line 22
    .line 23
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    .line 28
    .line 29
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    .line 30
    .line 31
    const-string v1, "text_visibility_collecting"

    .line 32
    .line 33
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    .line 38
    .line 39
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    .line 40
    .line 41
    const-string v1, "text_style_collecting"

    .line 42
    .line 43
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    .line 48
    .line 49
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    .line 50
    .line 51
    const-string v1, "info_collecting"

    .line 52
    .line 53
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    .line 58
    .line 59
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    .line 60
    .line 61
    const-string v1, "non_content_view_collecting"

    .line 62
    .line 63
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    .line 68
    .line 69
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    .line 70
    .line 71
    const-string v1, "text_length_collecting"

    .line 72
    .line 73
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    .line 78
    .line 79
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    .line 80
    .line 81
    const-string v1, "view_hierarchical"

    .line 82
    .line 83
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    .line 88
    .line 89
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 90
    .line 91
    const-string v1, "ignore_filtered"

    .line 92
    .line 93
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 98
    .line 99
    iget-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    .line 100
    .line 101
    const-string v1, "web_view_urls_collecting"

    .line 102
    .line 103
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iput-boolean p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    .line 108
    .line 109
    iget p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    .line 110
    .line 111
    const-string v1, "too_long_text_bound"

    .line 112
    .line 113
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    iput p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    .line 118
    .line 119
    iget p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    .line 120
    .line 121
    const-string v1, "truncated_text_bound"

    .line 122
    .line 123
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iput p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    .line 128
    .line 129
    iget p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    .line 130
    .line 131
    const-string v1, "max_entities_count"

    .line 132
    .line 133
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    iput p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    .line 138
    .line 139
    iget p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    .line 140
    .line 141
    const-string v1, "max_full_content_length"

    .line 142
    .line 143
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    iput p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    .line 148
    .line 149
    iget p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    .line 150
    .line 151
    const-string v1, "web_view_url_limit"

    .line 152
    .line 153
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    iput p2, p3, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    .line 158
    .line 159
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Xi;->b:Lcom/yandex/metrica/impl/ob/Zi;

    .line 160
    .line 161
    const-string v1, "filters"

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Zi;->a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/If$y;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p3, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 172
    .line 173
    :cond_0
    invoke-virtual {v0, p3}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/impl/ob/If$v;)Lcom/yandex/metrica/impl/ob/hl;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    return-object p1
.end method
